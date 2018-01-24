#!/usr/bin/perl

$TFHE_TYPE=$ARGV[0];
$CONSTR_PARAM_TYPE=$ARGV[1];

print <<EOF
//-----------------------------------------------------------------
// autogenerated allocators/constructors/destructors declarations
// use code_autogen.pl $TFHE_TYPE $CONSTR_PARAM_TYPE to regenerate
//-----------------------------------------------------------------


/** allocate space for a single ${TFHE_TYPE} */
EXPORT ${TFHE_TYPE}* alloc_${TFHE_TYPE}();
/** allocate space for an array of ${TFHE_TYPE} 
 * \@param nbelts the number of elements */
EXPORT ${TFHE_TYPE}* alloc_${TFHE_TYPE}_array(int nbelts);

/** free memory space for a single ${TFHE_TYPE} 
 * \@param ptr the pointer to release */
EXPORT void free_${TFHE_TYPE}(${TFHE_TYPE}* ptr);
/** free memory space for an array of ${TFHE_TYPE} 
 * \@param nbelts the number of elements 
 * \@param ptr the pointer to release */
EXPORT void free_${TFHE_TYPE}_array(int nbelts, ${TFHE_TYPE}* ptr);

/** initializes (constructor) a single ${TFHE_TYPE} on an already allocated space 
 * \@param ptr the pointer to the first element
 * \@param params the LWE parameters to use
 */
EXPORT void init_${TFHE_TYPE}(${TFHE_TYPE}* ptr, const ${CONSTR_PARAM_TYPE}* params);

/** initializes (constructor) an array of ${TFHE_TYPE}s on an already allocated space 
 * \@param nbelts the number of elements to initialize 
 * \@param ptr the pointer to the first element
 * \@param params the LWE parameters to use
 */
EXPORT void init_${TFHE_TYPE}_array(int nbelts, ${TFHE_TYPE}* ptr, const ${CONSTR_PARAM_TYPE}* params);

/** finalizes (destructor) a single ${TFHE_TYPE} (before freeing the memory space) 
 * \@param ptr the pointer to the first element
 */
EXPORT void destroy_${TFHE_TYPE}(${TFHE_TYPE}* ptr);

/** finalizes (destructor) an array of ${TFHE_TYPE}s (before freeing the memory space) 
 * \@param nbelts the number of elements to initialize 
 * \@param ptr the pointer to the first element
 */
EXPORT void destroy_${TFHE_TYPE}_array(int nbelts, ${TFHE_TYPE}* ptr);
 
/** allocates and initializes (constructor) a single ${TFHE_TYPE} 
 * \@param params the LWE parameters to use
 */
EXPORT ${TFHE_TYPE}* new_${TFHE_TYPE}(const ${CONSTR_PARAM_TYPE}* params);
/** allocates and initializes (constructor) a single ${TFHE_TYPE} 
 * \@param nbelts the number of consecutive elements to create 
 * \@param params the LWE parameters to use
 */
EXPORT ${TFHE_TYPE}* new_${TFHE_TYPE}_array(int nbelts, const ${CONSTR_PARAM_TYPE}* params);

/** destroy and frees memory space for a single ${TFHE_TYPE} 
 * \@param ptr the pointer to release */
EXPORT void delete_${TFHE_TYPE}(${TFHE_TYPE}* obj);
/** destroys and free memory space for an array of ${TFHE_TYPE} 
 * \@param nbelts the number of elements 
 * \@param ptr the pointer to release */
EXPORT void delete_${TFHE_TYPE}_array(int nbelts, ${TFHE_TYPE}* obj);
EOF
;
